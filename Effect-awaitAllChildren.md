# awaitAllChildren

Returns a new effect that will not succeed with its value before first
waiting for the end of all child fibers forked by the effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.awaitAllChildren`.

### Signature

```typescript
export declare const awaitAllChildren: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
```
