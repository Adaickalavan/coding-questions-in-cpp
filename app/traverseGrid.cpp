/**
Question 2: 
Consider an N×N grid. Write a program to find a path (not necessarily the
shortest path) from cell A to cell B within the grid, and return the path between these cells.
A random number is assigned to each grid cell, representing the height of each cell. A move is 
considered to be a single step from the current position to some adjacent position in the grid. 
We can move in all four directions: Up (↑), Down (↓), Left (←), and Right (→).

Rules:
- Rule 1: We can only move to the adjacent cells that have equal or shorter height.
- Rule 2: If no move is possible with respect to Rule 1, return None.

Remarks:
1) The solution is written in C++.
2) If a valid path is found, then we print the path. For example: "Path found: L U U L U". Here,
the steps taken are printed using the characters 'U' for up, 'D' for down, 'L' for left, and 'R' 
for right.
3) If no valid path path is found, then we print: "Path found: None"

*/

#include <iostream>
#include <vector>
#include <array>
#include <queue>
#include <set>
#include <iterator>
#include <functional>

using std::vector;
using std::array;
using std::pair;
using std::cout;
using std::priority_queue;
using std::set;
using std::queue;
using std::ostream;
using std::ostream_iterator;

// Represents a coordinate 
class Coord{
    public:
        Coord();
        Coord(int _x, int _y);
        int x;
        int y;
};

Coord::Coord(){
}

Coord::Coord(int _x, int _y){
    x = _x;
    y = _y;
}

// Overload operator '==' for two Coord inputs
bool operator==(const Coord& lhs, const Coord& rhs){
    if (lhs.x == rhs.x && lhs.y == rhs.y){
        return true;
    }
    return false;
}

// Overload operator '+' for two Coord inputs
Coord operator+(const Coord& lhs, const Coord& rhs){
    return Coord(lhs.x + rhs.x, lhs.y + rhs.y);
}

bool operator<(const Coord& lhs, const Coord& rhs){
    return true;
}

// Represents a cell
class Cell{
    public:
        Cell();
        Cell* parent;
        Coord loc;
        char direction;
        int distFromStart;
        int distToGoal;
};

Cell::Cell():loc(){
}

class Traverse{
    public:
        Traverse(int size);
        vector<char> astar(vector<vector<int>>& grid, Coord start, Coord end);
    private:
        int N;
        queue<Cell*> minHeap;
        set<Coord> explored;
        set<Coord> frontier;
        vector<char> astar(vector<vector<int>>& grid, Cell* start, Cell* end);
        void findNeighbours(vector<vector<int>>& grid, Cell* cell);
        void traceBack(Cell* cell, vector<char>& path);
};

Traverse::Traverse(int size){
    N = size;
}

vector<char> Traverse::astar(vector<vector<int>>& grid, Coord _start, Coord _end){
    Cell* start = new Cell();
    start->loc = _start;
    start->parent = NULL;
    
    Cell* end = new Cell;
    end->loc = _end;
    end->parent = NULL;    
    
    return astar(grid, start, end);
}

// Traverse the grid from start cell to end cell.
// Returns the path from start cell to end cell, if any is found. 
vector<char> Traverse::astar(vector<vector<int>>& grid, Cell* start, Cell* end){
    minHeap.push(start);
    vector<char> path{};

    while(!minHeap.empty()){
        Cell* cell = minHeap.front();
        minHeap.pop();
        explored.insert(cell->loc);

        // Check if end cell reached
        if(cell->loc == end->loc){
            traceBack(cell, path);
            return path;
        } 

        findNeighbours(grid, cell);
    }

    // No path found
    return path; 
}

// FindNeighbours retrieves all valid moves to adjacent cells.
void Traverse::findNeighbours(vector<vector<int>>& grid, Cell* cell){
    // Current coordinate
    Coord curLoc = cell->loc; 

    // Lambda functions for edge detection in each direction
    array<std::function<bool(Coord)>,4> comp = {
        [&](Coord coord){return coord.x > 0;}, //Check whether can move Up
        [&](Coord coord){return coord.x < N-1;}, //Check whether can move Down
        [&](Coord coord){return coord.y > 0;}, //Check whether can move Left
        [&](Coord coord){return coord.y < N-1;}}; //Check whether can move Right
    // Steps in each direction    
    array<Coord,4> step = {
        Coord(-1,0),
        Coord(+1,0),
        Coord(0,-1),
        Coord(0,+1)
    };
    // Letters corresponding to each direction
    array<char,4> dir = {'U','D','L','R'};

    for(int ii=0; ii<4 ;ii++){
        Coord newLoc = curLoc + step[ii]; // New coordinate
        if (comp[ii](curLoc) && 
            explored.find(newLoc) == explored.end() &&
            frontier.find(newLoc) == frontier.end() &&
            grid[curLoc.x][curLoc.y] >= grid[newLoc.x][newLoc.y])
        {
            Cell* neighbour = new Cell;
            neighbour->parent = cell;
            neighbour->loc = newLoc;
            neighbour->direction = dir[ii];
            minHeap.push(neighbour);
            frontier.insert(neighbour->loc);
        }
    } 
}

// Traceback to obtain the travel path from starting cell to ending cell.
void Traverse::traceBack(Cell* cell, vector<char>& path){
    if(cell == NULL){
        return;
    }
    traceBack(cell->parent, path);
    path.push_back(cell->direction); 
    return;   
}

// Helper function to print vector<T> containers
template<class T>
ostream& operator<<(ostream& os, const vector<T>& v)
{
    copy(v.begin(), v.end(), ostream_iterator<T>(os, " ")); 
    return os;
}

int main(){
    // Testcase 1
    vector<vector<int>> grid1(4);
    grid1[0] = {55, 33,  4,  5};
    grid1[1] = { 1, 33,  4,  5};
    grid1[2] = { 0, 33, 21,  7};
    grid1[3] = {-1, 33, 30, 24};

    Coord start = Coord(0, 0); // Start cell
    Coord end = Coord(3, 3); // End cell
    Traverse traverse1(4);
    vector<char> path = traverse1.astar(grid1, start, end);
    if (path.size()){
        cout << "Path found:" << path << "\n";
    } else {
        cout << "Path found: None" << "\n";
    }

    // Testcase 2
    vector<vector<int>> grid2(6);
    grid2[0] = {21, 55, 33,  4,  5, 99};
    grid2[1] = {23, 21, 20,  4,  5, 47};
    grid2[2] = {56, 25, 21, 21,  7, 56};
    grid2[3] = {76, 26, 28, 30, 24, 78};
    grid2[4] = {75, -2, 23, 46, 53, 78};
    grid2[5] = {76, 19, 13, 30, 29, 32};

    start = Coord(4, 4);
    end = Coord(1, 2);
    Traverse traverse2(6);
    path = traverse2.astar(grid2, start, end);
    if (path.size()){
        cout << "Path found:" << path << "\n";
    } else {
        cout << "Path found: None" << "\n";
    }

    // Testcase 3
    vector<vector<int>> grid3(6);
    grid3[0] = {21, 55, 33,  4,  5, 99};
    grid3[1] = {23, 43, 20,  4,  5, 47};
    grid3[2] = {56,  0, 19, 21,  7, 56};
    grid3[3] = {76, -1, 33, 30, 24, 78};
    grid3[4] = {75, -2, 23, 46, 53, 78};
    grid3[5] = {76, 19, 13, 30, 29, 32};

    start = Coord(4, 4);
    end = Coord(1, 2);
    Traverse traverse3(6);
    path = traverse3.astar(grid3, start, end);
    if (path.size()){
        cout << "Path found:" << path << "\n";
    } else {
        cout << "Path found: None" << "\n";
    }

    return 0;
}