Package: `effect`<br />
Module: `Reactivity`<br />

## Reactivity.Reactivity

Service for key-based reactive invalidation.

**When to use**

Use to provide the invalidation service that refreshes queries, streams, and
atoms when application keys change.

**Details**

The service can register handlers for keys, invalidate those keys, wrap
mutations so successful effects invalidate keys, and turn query effects into
queues or streams that rerun when keys are invalidated.

**Signature**

```ts
declare class Reactivity
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reactivity.ts#L41)

Since v4.0.0