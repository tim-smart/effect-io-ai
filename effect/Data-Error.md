Package: `effect`<br />
Module: `Data`<br />

## Data.Error

Provides a constructor for a Case Class.

**Signature**

```ts
declare const Error: new <A extends Record<string, any> = {}>(args: Types.VoidIfEmpty<{ readonly [P in keyof A]: A[P]; }>) => Cause.YieldableError & Readonly<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Data.ts#L554)

Since v2.0.0