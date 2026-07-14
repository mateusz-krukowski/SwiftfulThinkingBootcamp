import SwiftUI

// Model kafelka 2048
struct Tile: Identifiable {
    let id = UUID()
    var value: Int
    var row: Int
    var col: Int
    var merged: Bool = false
}

// Model gry 2048
class Game2048Model: ObservableObject {
    @Published var tiles: [Tile] = []
    let size = 4
    
    init() {
        resetGame()
    }
    
    func resetGame() {
        tiles.removeAll()
        addRandomTile()
        addRandomTile()
    }
    
    func tile(atRow row: Int, col: Int) -> Tile? {
        tiles.first { $0.row == row && $0.col == col }
    }
    
    func addRandomTile() {
        var emptySpots: [(Int, Int)] = []
        for r in 0..<size {
            for c in 0..<size {
                if tile(atRow: r, col: c) == nil {
                    emptySpots.append((r, c))
                }
            }
        }
        guard let spot = emptySpots.randomElement() else { return }
        let newValue = Int.random(in: 0..<10) == 0 ? 4 : 2
        let tile = Tile(value: newValue, row: spot.0, col: spot.1)
        tiles.append(tile)
    }
    // Tu można dodać funkcję przesuwania i łączenia kafelków
}

// Widok gry 2048 w SwiftUI
struct Game2048View: View {
    @StateObject private var model = Game2048Model()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("2048")
                .font(.largeTitle)
                .bold()
            
            VStack(spacing: 8) {
                ForEach(0..<model.size, id: \.self) { row in
                    HStack(spacing: 8) {
                        ForEach(0..<model.size, id: \.self) { col in
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(width: 64, height: 64)
                                if let tile = model.tile(atRow: row, col: col) {
                                    Text("\(tile.value)")
                                        .font(.title)
                                        .frame(width: 60, height: 60)
                                        .background(RoundedRectangle(cornerRadius: 8).fill(Color.orange))
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }
            Button("Restart") {
                model.resetGame()
            }
            .padding(.top)
        }
        .padding()
    }
}

#Preview {
    Game2048View()
}
