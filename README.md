
##### Backend

1. Descargar el proyecto de BackVynils del repositorio: https://github.com/MISW-4203-2023/BackVynils este es el backend de la herramienta
2. Asegúrese de tener disponibles los puertos 3000 (para la aplicación web) y 5432 (para la base de datos postgres), puede cambiar estos puertos en el archivo docker-compose.yaml
3. Desde la carpeta raiz de “BackVynils” ejecutar el siguiente comando, para inicializar el back de la aplicación y permitir el acceso a la bd:
  
   ```sh
   docker-compose up –d
   ```
   
5. Debería ver una imagen similar a la siguiente:
<img width="1209" alt="image" src="https://github.com/MISW-4203-2023/Vinilos/assets/124005780/36e6740c-b759-4358-a401-b1b0dc3e5988">

##### Aplicación

1. Descargue el contenido de la rama `main`
2. Abra el proyecto en Android Studio
3. Obtenga la ip local de su computadora, existen comandos como `ifconfig` en sistemas basados en unix y el comando `ipconfig` para sistemas windows.
4. Reemplace la ip en el archivo `network_security_config.xml`

![image](https://github.com/MISW-4203-2023/Vinilos/assets/124005780/0258848b-b808-41ef-b8ec-c95901d2144e)

![image](https://github.com/MISW-4203-2023/Vinilos/assets/124005780/e5f73727-4095-46cd-a3fb-b306ceda044a)

5. Use la ip en el archivo `AppContainer.kt` para apuntar al servicio REST, suponiendo que su ip privada es `192.168.0.10` y que el puerto de la app web de docker es `3000` el valor de la línea 16 será:
   
```kt
  private val baseUrl = "http://192.168.0.10:3000/"
```

![image](https://github.com/MISW-4203-2023/Vinilos/assets/124005780/9e0b40d5-c808-47a7-bc5b-7723e1213bcd)


