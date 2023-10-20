
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Teknolojidenizi.BL;
using Teknolojidenizi.DAL.Context;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();

builder.Services.AddDbContext<SQLContext>(opt => opt.UseSqlServer(builder.Configuration.GetConnectionString("CS1")));
builder.Services.AddScoped(typeof(IRepository<>), typeof(SQLRepository<>));



// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer(); // route ile alakal�
builder.Services.AddSwaggerGen(); // D�k�mantasyon dosyalar� olu�turmak i�in

builder.Services.AddCors(options =>
{
	options.AddPolicy(name: "izinVerilenOriginler",
					 policy =>
					 {
						 policy.WithOrigins("http://localhost:5212/").AllowAnyMethod().AllowCredentials();
					 });
});

builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme).AddJwtBearer(opt =>
{
	opt.TokenValidationParameters = new TokenValidationParameters
	{
		ValidateIssuer = true,
		ValidateAudience = true,
		ValidateLifetime = true,
		ValidateIssuerSigningKey = true,
		ValidIssuer = "http://localhost:5037/", // api sa�lay�c� 
		ValidAudience = "n11",
		IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("BuBenimOzelKeyim"))
	};
});


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment()) // Ortam geli�tirme ortam� ise
{
	app.UseSwagger(); // swagger kullan
	app.UseSwaggerUI(); // swagger � UI olarak kullan
}


app.UseCors("izinVerilenOriginler");

//// google a .net core cors disable yaz
//app.UseCors(x => x
//               .AllowAnyMethod()
//               .AllowAnyHeader()
//               .SetIsOriginAllowed(origin => true) // allow any origin
//               .AllowCredentials()); // allow credentials

app.UseAuthorization();

app.MapControllers(); // default route olu�turup projeyi oradan aya�a kald�r�r

app.Run();
