Package: `effect`<br />
Module: `Exit`<br />

## Exit.Exit.Proto

Base interface shared by both Success and Failure.

**When to use**

Use to describe the common protocol implemented by every `Exit` value.

**Details**

Every Exit is also an Effect, so you can yield it in `Effect.gen`.

**Signature**

```ts
export interface Proto<out A, out E = never> extends Effect.Effect<A, E> {
    readonly [TypeId]: typeof TypeId
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L86)

Since v4.0.0