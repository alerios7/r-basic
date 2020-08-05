#Tarea 1
# Pregunta 1
segundos = 250000000
minutos = segundos / 60
horas = minutos / 60
dias = horas / 24
años = dias / 365

#2018:365, 2019: 365, 2020: 366, 2021:365, 2022: 365, 2023: 365, 2024:366
año = 2025
dias2025 = dias - 365 * 5 - 366 * 2
dia.horaDic25 = dias2025 - 31 - 28 - 31 - 30 - 31 - 30 -31 - 31 -30 - 31 - 30
diaDic25 = floor(dia.horaDic25)
horadic25 = round((dia.horaDic25 - diaDic25)*24)

print(sprintf("Serian las %i del %i de diciembre de %i", horadic25, diaDic25, año))

#Pregunta 2
solvEc2grado = function(a, b, c){
  (c -b) / a
}
solvEc2grado(2,4,0)

#5x+3=0
solvEc2grado(5,3,0)
#7x+4=18
solvEc2grado(7,4,18)
#x+1=1
solvEc2grado(1,1,1)

#Pregunta 3
resultado = round(3 * exp(1) - pi, 3)
print(resultado)

#Pregunta 4
resultado2 = round(Mod((2+3i)^2/(5+8i)), 3)
print(resultado2)
