Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.succeed

Returns a schedule that recurs indefinitely, always producing the specified
constant value.

**Signature**

```ts
declare const succeed: <A>(value: A) => Schedule<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1774)

Since v2.0.0