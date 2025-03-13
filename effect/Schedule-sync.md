Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.sync

Returns a schedule that recurs indefinitely, evaluating the given function to
produce a constant value.

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Schedule<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1781)

Since v2.0.0