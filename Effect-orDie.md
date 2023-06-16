# orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the effect.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const orDie: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, A>
```
