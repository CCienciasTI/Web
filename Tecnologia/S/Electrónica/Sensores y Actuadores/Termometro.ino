
#include <Wire.h>     // libreria de comunicacion por I2C
#include <LCD.h>      // libreria para funciones de LCD
#include <LiquidCrystal_I2C.h>    // libreria para LCD por I2C

LiquidCrystal_I2C lcd (0x27, 2, 1, 0, 4, 5, 6, 7); // DIR, E, RW, RS, D4, D5, D6, D7

float adc;
float temperatura;
float Promedio;
int contador;
float temperatura_prom;
int temp_entera;
float temp_f;
float resta;
void setup()
{
    lcd.setBacklightPin(3,POSITIVE);  // puerto P3 de PCF8574 como positivo
    lcd.setBacklight(HIGH);   // habilita iluminacion posterior de LCD
    lcd.begin(16, 2);     // 16 columnas por 2 lineas para LCD 1602A
    lcd.clear();      // limpia pantalla
    Promedio=0.0;
    contador=0;
}

void loop()
{
    adc = analogRead(A0);
  temperatura = (adc*500.0)/1023;
  Promedio=Promedio+temperatura;
  
  lcd.setCursor(0, 0);      // ubica cursor en columna 0, linea 0
  lcd.print("Temperatura:");  // escribe el texto en pantalla
  

  contador++;

  if (contador >= 150) {
    // turn LED on:
    temperatura_prom=Promedio/contador;
    temp_entera=temperatura_prom;
    resta=temperatura_prom-temp_entera;
    if (resta >= 0.5)
    {
      temp_f=temp_entera+1;
      }
      else
      {
        temp_f=temp_entera+0.5;
        }
       temp_f=temp_f-0; 
    lcd.setCursor(0, 1);      // ubica cursor en columna 0, linea 1
    lcd.print(temp_f);
    Promedio=0.0;
    contador=0;
  } 
  
  
  //delay(1);
  lcd.setCursor(5, 1);      // ubica cursor en columna 0, linea 1
    lcd.print((char)223);
    lcd.print('C');

  
}
