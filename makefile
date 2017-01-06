
bin/MyFrame.out: MyFrame.o MyDrawingPanel.o
	g++ -o bin/MyFrame.out MyDrawingPanel.o MyFrame.o Population.o Cell.o CellParam.o `wx-config --libs`

MyDrawingPanel.o: src/MyFrame.h src/MyDrawingPanel.cpp Population.o
	g++ `wx-config --cxxflags` -c src/MyDrawingPanel.cpp

MyFrame.o: src/MyFrame.h src/MyFrame.cpp src/layoutid.h Population.o
	g++ `wx-config --cxxflags` -c src/MyFrame.cpp

Population.o: src/Population.h src/Population.cpp src/Patch.h src/Node.h Cell.o CellParam.o
	g++ -c -lmath src/Population.cpp

Cell.o: src/Cell.h src/Cell.cpp src/Vect.h CellParam.o
	g++ -c src/Cell.cpp

CellParam.o: src/CellParam.h src/CellParam.cpp
	g++ -c src/CellParam.cpp

clean:
	rm src/*~ *.o out/*.txt images/*.bmp