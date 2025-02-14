import Foundation
import Charts
import DGCharts
import RealmSwift
import RxSwift
import Lottie
import OneSignalFramework

class LibraryManager {
    private var callIndex = 0

    func callLibraryFunction() -> String {
        let functions: [(String, () -> Void)] = [
            ("Charts", callCharts),
            ("RealmSwift", callRealm),
            ("RxSwift", callRxSwift),
            ("Lottie", callLottie),
            ("OneSignal", callOneSignal)
        ]

        let (libraryName, function) = functions[callIndex % functions.count]
        function()
        callIndex += 1
        return libraryName
    }

    private func callCharts() {
        print("Llamando a Charts: Creando gráfico")
        let chartView = LineChartView()
        chartView.data = LineChartData()
    }

    private func callRealm() {
        print("Llamando a RealmSwift: Creando base de datos local")
        _ = try! Realm() // Se inicializa, pero no se usa directamente
        print("Base de datos Realm lista")
    }

    private func callRxSwift() {
        print("Llamando a RxSwift: Creando Observable")
        let observable = Observable.just("Hola RxSwift")
        _ = observable.subscribe { print($0) }
    }

    private func callLottie() {
        print("Llamando a Lottie: Configurando animación")
        let animationView = LottieAnimationView(name: "example")
        animationView.play()
    }

    private func callOneSignal() {
        print("Llamando a OneSignal: Registrando dispositivo")
        OneSignal.Debug.setLogLevel(.LL_VERBOSE)
    }
}
