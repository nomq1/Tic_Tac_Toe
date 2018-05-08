CXX=clang++-5.0
CXXFLAGS=-std=c++14

all: Board.o BoardIndex.o Node.o CharException.o CoordinateException.o

Board.o: Board.cpp Board.h
	$(CXX) $(CXXFLAGS) -c Board.cpp -o Board.o

BoardIndex.o: BoardIndex.cpp BoardIndex.h
	$(CXX) $(CXXFLAGS) -c BoardIndex.cpp -o BoardIndex.o

Node.o: Node.cpp Node.h
	$(CXX) $(CXXFLAGS) -c Node.cpp -o Node.o

CharException.o: CharException.cpp CharException.h
	$(CXX) $(CXXFLAGS) -c CharException.cpp -o CharException.o

CoordinateException.o: CoordinateException.cpp CoordinateException.h
	$(CXX) $(CXXFLAGS) -c CoordinateException.cpp -o CoordinateException.o

clean:
	rm *.o a.out

test: Board.o BoardIndex.o Node.o CharException.o CoordinateException.o
	$(CXX) $(CXXFLAGS) Test.cpp -g Board.o BoardIndex.o Node.o CharException.o CoordinateException.o -o Test.o
	./Test.o
