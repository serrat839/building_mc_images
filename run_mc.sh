if [ -z "$MAX_RAM" ]
then
    echo "YOU NEED A FUCKING MAX_RAM VAR"
    exit
fi
if [ -z "$MIN_RAM" ]
then
    echo "YOU NEED A FUCKING MIN_RAM VAR"
    exit
fi
if [ -z "$LEVEL_NAME" ]
then
    echo "YOU NEED A FUCKING LEVEL_NAME VAR"
    exit
fi
if [ -z "$DIFFICULTY" ]
then
    echo "YOU NEED A DIFFICULTY"
    exit
fi
if [ -z "$GAMEMODE" ]
then
    echo "YOU NEED A GAMEMODE"
    exit
fi

sed -i "s/<GAMEMODE>/$GAMEMODE/g" server.properties
sed -i "s/<DIFFICULTY>/$DIFFICULTY/g" server.properties
sed -i "s/<LEVEL_NAME>/$LEVEL_NAME/g" server.properties

java -Xmx$MAX_RAM -Xms$MIN_RAM -jar server.jar --nogui