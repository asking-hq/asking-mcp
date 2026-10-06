# Asking MCP

Plugin que conecta assistentes de IA (Claude, ChatGPT, Cursor, VS Code e outros
clientes compatíveis) ao seu atendimento no [Asking](https://asking.com.br) via
MCP.

Com a sua permissão, o assistente lê conversas, mensagens, contatos e relatórios
do seu papel, cria notas internas e rascunhos e atualiza status, prioridade,
etiquetas e responsável. Quando a conexão inclui o escopo de envio, ele também
responde e inicia conversas em seu nome — sempre com consentimento por escopo,
registro na auditoria e revogação imediata.

## Configuração do servidor

- URL (Streamable HTTP): `https://app.asking.com.br/mcp`
- Autenticação: OAuth com escopos `mcp:read`, `mcp:write` e `mcp:send`

### Cursor

```json
{
  "mcpServers": {
    "asking": {
      "url": "https://app.asking.com.br/mcp"
    }
  }
}
```

Ou em **Settings > MCP > Add server** (HTTP) e cole a URL.

### VS Code

```json
{
  "servers": {
    "asking": {
      "type": "http",
      "url": "https://app.asking.com.br/mcp"
    }
  }
}
```

### Claude

**Settings > Connectors > Add custom connector** e cole
`https://app.asking.com.br/mcp`.

## Documentação

Passo a passo completo e limites por plano:
<https://docs.asking.com.br/hc/asking-documentation/articles/asking-conectar-assistentes-de-ia-via-mcp>

## Licença

MIT — veja [LICENSE](./LICENSE).
