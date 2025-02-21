# serviceOptional

Retrieves a service from the context, throwing an error if it is missing.

**Details**

This function retrieves a required service from the context. If the service
is available, it returns the service. If the service is missing, it throws a
`NoSuchElementException`, which can be handled using Effect's error-handling
mechanisms. This is useful for services that are critical to the execution of
your effect.

To import and use `serviceOptional` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.serviceOptional
```

**Signature**

```ts
export declare const serviceOptional: <I, S>(tag: Context.Tag<I, S>) => Effect<S, Cause.NoSuchElementException>
```
