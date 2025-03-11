## InterruptedExceptionTypeId

A unique symbol identifying the `InterruptedException` type.

**Details**

This provides a symbol that identifies an `InterruptedException`. This is
typically used internally to recognize when a fiber has been interrupted,
helping the framework handle interruption logic correctly.

**See**

- `InterruptedException` Create or work with an `InterruptedException`

**Signature**

```ts
declare const InterruptedExceptionTypeId: unique symbol
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L99)

Since v2.0.0