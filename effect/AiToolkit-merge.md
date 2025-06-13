Package: `@effect/ai`<br />
Module: `AiToolkit`<br />

## AiToolkit.merge

Merges this toolkit with one or more other toolkits.

**Signature**

```ts
declare const merge: <const Toolkits extends ReadonlyArray<Any>>(...toolkits: Toolkits) => AiToolkit<Tools<Toolkits[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiToolkit.ts#L255)

Since v1.0.0