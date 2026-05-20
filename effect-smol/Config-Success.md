Package: `effect`<br />
Module: `Config`<br />

## Config.Success

Extracts the successfully parsed value type from a `Config`.

**Signature**

```ts
type Success<T> = [T] extends [Config<infer A>] ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L510)

Since v2.5.0