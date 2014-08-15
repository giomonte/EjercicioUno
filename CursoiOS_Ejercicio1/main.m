//
//  main.m
//  CursoiOS_Ejercicio1
//
//  Created by CCDM20 on 15/08/14.
//  Copyright (c) 2014 CCDM20. All rights reserved.
//
// Ejericio 1 creas una calculadora

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    // insert code here...
        NSString *identificador = @"hola a la calculadora";
        NSLog(@"%@" , identificador);
        
        float primerValor;
        scanf("%f" , &primerValor);
        
        int opcion;
        scanf("%d" , &opcion);
        
        float segundoValor;
        scanf("%f", &segundoValor);
        
        float operacion = 0;
        
        switch (opcion)
        {
            case 0:
                operacion = primerValor + segundoValor;
                break;
            case 1:
                operacion = primerValor - segundoValor;
                break;
            case 2:
                operacion = primerValor * segundoValor;
                break;
            case 3:
                operacion = primerValor / segundoValor;
                break;
            default:
                NSLog(@"Opcion no valida!!");
                break;
        }
        if(opcion == 0)
        {
            NSLog(@"mensaje 1");
        }
        else
        {
            NSLog(@"mensaje 2");
        }
        
        //Crear un array ya con valores definidos
        NSArray *arrayValores = @[@{@"key": @"value"}, @"2", @"3"];
        
        id objeto;
        for(arrayValores in objeto)
        {
            NSLog(@"%@", objeto);
        }
        
        NSMutableArray *arrayOperaciones = [[NSMutableArray alloc] init];
        NSMutableArray *array;
        
        array = [NSMutableArray alloc];
        array = [NSMutableArray init];
        
        //Crar un objeto de tipo NSNumber para que el atributo operacion sea guardado en un array
        NSNumber *numero;
        numero = [NSNumber alloc];
        numero = [NSNumber init] initWithFloat:(operacion);
        
        [array addObject:(numero)];
        [array count];
        
        //CReas un diccionario para que despues no sea modificado
        NSDictionary *dictionary = @{
                                     @"nombre": @"Jesus",
                                     @"edad": @"100",
                                     @"lenjuages": @"Objetive - C"
                                     };
        //Crear diccionario para poder ser modificado despues
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setValue:@"Ruiz" forKey:@"apellido"];
        
        [arrayOperaciones addObject:dic];
        [arrayOperaciones addObject:dictionary];
    }
    return 0;
}

