# delay

Returns an effect that is delayed from this effect by the specified
`Duration`.

To import and use `delay` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.delay
```

**Signature**

```ts
export declare const delay: {
  (duration: Duration.DurationInput): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, duration: Duration.DurationInput): Effect<R, E, A>
}
```
