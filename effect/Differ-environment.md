Package: `effect`<br />
Module: `Differ`<br />

## Differ.environment

Constructs a differ that knows how to diff `Env` values.

**Signature**

```ts
declare const environment: <A>() => Differ<Context<A>, Differ.Context.Patch<A, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L322)

Since v2.0.0