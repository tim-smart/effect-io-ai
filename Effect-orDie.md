# orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const orDie: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, A>
```
