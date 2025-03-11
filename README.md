# basic_app

## Descripción
`basic_app` es una aplicación iOS desarrollada en **Swift** que integra múltiples librerías. Se gestiona a través de **Swift Package Manager (SPM)** para la administración de dependencias.

## Librerías Importadas
A continuación, se detallan las librerías utilizadas en la aplicación:

### Bases de Datos
- **Realm** → Base de datos móvil local y en la nube.
- **RealmDatabase (14.13.1)** → Implementación de Realm para gestión avanzada de datos.

### Programación Reactiva
- **RxSwift (6.8.0)** → Biblioteca de programación reactiva para trabajar con eventos asincrónicos.

### Gráficos y Animaciones
- **Lottie (4.5.1)** → Biblioteca para reproducir animaciones en formato JSON exportadas desde After Effects.
- **DGCharts (5.1.0)** → Biblioteca para la generación de gráficos y visualizaciones de datos en iOS.

### Notificaciones Push
- **OneSignalFramework (5.2.9)** → Plataforma para el envío y gestión de notificaciones push.

## Instalación
Este proyecto utiliza **Swift Package Manager (SPM)** para la gestión de dependencias. Para instalar las librerías, sigue estos pasos:

1. **Abrir el proyecto en Xcode**.
2. Ir a **File > Add Packages**.
3. Agregar las siguientes dependencias mediante sus URLs:

   - **Lottie** → `https://github.com/airbnb/lottie-ios.git`
   - **RxSwift** → `https://github.com/ReactiveX/RxSwift.git`
   - **Realm** → `https://github.com/realm/realm-swift.git`
   - **DGCharts** → `https://github.com/danielgindi/Charts.git`
   - **OneSignalFramework** → `https://github.com/OneSignal/OneSignal-iOS-SDK.git`
