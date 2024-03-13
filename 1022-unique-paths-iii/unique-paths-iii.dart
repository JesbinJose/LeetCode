class Solution {
  int uniquePathsIII(List<List<int>> g) {
    int zero=0,x=0,y=0;
    for(int i =0;i<g.length;i++)
      for(int j =0;j<g[i].length;j++)
        if(g[i][j]==0)zero++;
        else if(g[i][j]==1){
          x = i;
          y = j;
        }
    return dfs(g,x,y,zero);
  }
  int dfs(List<List<int>>g,int x,int y,zero){
    if(x<0||y<0||x>=g.length||y>=g[0].length||g[x][y]==-1) return 0;
    if(g[x][y]==2) return zero==-1?1:0;
    g[x][y]=-1;
    zero--;
    int res =dfs(g,x+1,y,zero)+dfs(g,x,y+1,zero)+dfs(g,x-1,y,zero)+dfs(g,x,y-1,zero);
    g[x][y] = 0;
    return res; 
  }
}