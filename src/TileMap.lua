TileMap = Class{}

function TileMap:init(width, height)
    self.width = width
    self.height = height
    self.tiles = {}
end

function TileMap:update(dt)

end

function TileMap:pointToTile(tileX, tileY)
    if tileX < 0 or tileX > self.width * TILE_SIZE or tileY < 0 or tileY > self.height * TILE_SIZE then
        return nil
    end
    
    return self.tiles[math.floor(tileY / TILE_SIZE) + 1][math.floor(tileX / TILE_SIZE) + 1]
end

function TileMap:render()
    for tileY = 1, self.height do
        for tileX = 1, self.width do
            self.tiles[tileY][tileX]:render()
        end
    end
end