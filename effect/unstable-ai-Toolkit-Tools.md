Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.Tools

A utility type which can be used to extract the tool definitions from a
toolkit.

**Signature**

```ts
type Tools<T> = T extends Toolkit<infer Tools> ? Tools : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Toolkit.ts#L137)

Since v4.0.0