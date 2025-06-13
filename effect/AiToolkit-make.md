Package: `@effect/ai`<br />
Module: `AiToolkit`<br />

## AiToolkit.make

Constructs a new `AiToolkit` from the specified tools.

**Signature**

```ts
declare const make: <const Tools extends ReadonlyArray<AiTool.Any>>(...tools: Tools) => AiToolkit<Tools[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiToolkit.ts#L245)

Since v1.0.0