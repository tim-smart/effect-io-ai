Package: `effect`<br />
Module: `Schema`<br />

## Schema.Schema.All

Any schema, including `never`.

**Signature**

```ts
type All = | Any
    | Schema<any, never, unknown>
    | Schema<never, any, unknown>
    | Schema<never, never, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L372)

Since v3.10.0