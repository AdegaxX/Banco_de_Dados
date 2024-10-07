graph = {
    'A' : ['B','C'],
    'B' : ['D','E'],
    'D' : ['H','I'],
    'H' : ['L'],
    'L' : [],
    'I' : [],
    'E' : ['J'],
    'J' : ['M'],
    'M' : [],
    'C' : ['F','G'],
    'F' : [],
    'G' : ['K'],
    'K' : []
}

# Busca em largura:

VIS = []  # lista dos vértices visitados
fila = [] # Inicialização da fila

def bfs(vis, graph, node): # Função BFS
  vis.append(node)
  fila.append(node)

  while fila: # Loop para visitar cada vértice
    m = fila.pop(0)
    print(m, end = " ")

    for visinho in graph[m]:
      if visinho not in vis:
        vis.append(visinho)
        fila.append(visinho)

# Busca em profundidade:
VIS2 = []  # lista dos vértices visitados
pilha = [] # Inicialização da pilha

def dfs(vis2, graph, node): # Função DFS
  if node not in vis2:
    print(node, end = " ")
    vis2.append(node)
    for visinho in graph[node]:
      dfs(vis2, graph, visinho)

entrada = int(input("Digite 1 para BFS e 2 para DFS: "))
if entrada == 1:
  print(bfs(VIS, graph, 'A'))
elif entrada == 2:
  print(dfs(VIS2, graph, 'A'))
else:
  print("Opção inválida")