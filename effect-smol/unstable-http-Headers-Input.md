Package: `effect`<br />
Module: `Headers`<br />

## Headers.Input

Input accepted when constructing headers.

**Details**

Records may contain string values, string arrays, or `undefined`; arrays are joined with `", "`, and `undefined` values are omitted.

**Signature**

```ts
type Input = | Record.ReadonlyRecord<string, string | ReadonlyArray<string> | undefined>
  | Iterable<readonly [string, string]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Headers.ts#L172)

Since v4.0.0