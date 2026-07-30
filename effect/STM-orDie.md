Package: `effect`<br />
Module: `STM`<br />

## STM.orDie

Translates `STM` effect failure into death of the fiber, making all
failures unchecked and not a part of the type of the effect.

**Signature**

```ts
declare const orDie: <A, E, R>(self: STM<A, E, R>) => STM<A, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1333)

Since v2.0.0