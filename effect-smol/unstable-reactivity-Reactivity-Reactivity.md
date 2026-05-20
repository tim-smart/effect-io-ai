Package: `effect`<br />
Module: `Reactivity`<br />

## Reactivity.Reactivity

A service for key-based reactive invalidation.

**Details**

The service can register handlers for keys, invalidate those keys, wrap
mutations so successful effects invalidate keys, and turn query effects into
queues or streams that rerun when keys are invalidated.

**Signature**

```ts
declare class Reactivity
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reactivity.ts#L49)

Since v4.0.0