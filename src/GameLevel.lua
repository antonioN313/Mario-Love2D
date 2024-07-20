GameLevel = Class{}

function GameLevel:init(entities, objects, tilemap)
    self.entities = entities
    self.objects = objects
    self.tileMap = tilemap
end

function GameLevel:clear()
    for objectIndex = #self.objects, 1, -1 do
        if not self.objects[objectIndex] then
            table.remove(self.objects, objectIndex)
        end
    end

    for entityIndex = #self.entities, 1, -1 do
        if not self.objects[entityIndex] then
            table.remove(self.objects, entityIndex)
        end
    end
end

function GameLevel:update(dt)
    self.tileMap:update(dt)

    for k, object in pairs(self.objects) do
        object:update(dt)
    end

    for k, entity in pairs(self.entities) do
        entity:update(dt)
    end
end

function GameLevel:render()
    self.tileMap:render()

    for k, object in pairs(self.objects) do
        object:render()
    end

    for k, entity in pairs(self.entities) do
        entity:render()
    end
end