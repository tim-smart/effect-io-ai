## serviceOptional

Retrieves a service from the context, throwing an error if it is missing.

**Details**

This function retrieves a required service from the context. If the service
is available, it returns the service. If the service is missing, it throws a
`NoSuchElementException`, which can be handled using Effect's error-handling
mechanisms. This is useful for services that are critical to the execution of
your effect.

**See**

- `serviceOption` for a version that returns an `Option` instead of throwing an error.

**Signature**

```ts
declare const serviceOptional: <I, S>(tag: Context.Tag<I, S>) => Effect<S, Cause.NoSuchElementException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7611)

Since v2.0.0