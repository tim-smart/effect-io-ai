Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.Tools

A utility type which can be used to extract the tool definitions from a
toolkit.

**Signature**

```ts
type Tools<T> = T extends Toolkit<infer Tools> ? Tools : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L173)

Since v1.0.0