Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ResourceLink

A resource that the server is capable of reading, included in a prompt or
tool call result.

**Gotchas**

Resource links returned by tools are not guaranteed to appear in the results
of `resources/list` requests.

**Signature**

```ts
declare class ResourceLink
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1193)

Since v4.0.0