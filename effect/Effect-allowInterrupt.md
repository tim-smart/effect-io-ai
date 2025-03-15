Package: `effect`<br />
Module: `Effect`<br />

## Effect.allowInterrupt

Allows interruption of the current fiber, even in uninterruptible regions.

**Details**

This effect checks whether any other fibers are attempting to interrupt the
current fiber. If so, it allows the current fiber to perform a
self-interruption.

**When to Use**

This is useful in situations where you want to allow interruption to happen
even in regions of the code that are normally uninterruptible.

**Signature**

```ts
declare const allowInterrupt: Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4696)

Since v2.0.0