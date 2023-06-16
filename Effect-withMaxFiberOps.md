# withMaxFiberOps

Sets the child effect's maximum number of ops before yield

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.withMaxFiberOps`.

### Signature

```typescript
export declare const withMaxFiberOps: {
  (ops: number): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, ops: number): Effect<R, E, B>
}
```
