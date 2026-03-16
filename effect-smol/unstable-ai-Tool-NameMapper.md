Package: `effect`<br />
Module: `Tool`<br />

## Tool.NameMapper

A utility which allows mapping between a provider-defined name for a tool
and the name given to the tool by the Effect AI SDK.

The custom names used by the Effect AI SDK are to allow for toolkits which
contain tools from multiple different providers that would otherwise have
naming conflicts (i.e. `"web_search"`) to instead use custom names (i.e.
`"OpenAiWebSearch"`).

**Signature**

```ts
declare class NameMapper<Tools> { constructor(tools: Tools) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1457)

Since v1.0.0