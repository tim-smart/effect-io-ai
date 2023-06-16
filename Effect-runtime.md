# runtime

Returns an effect that accesses the runtime, which can be used to
(unsafely) execute tasks. This is useful for integration with legacy code
that must call back into Effect code.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const runtime: <R>() => Effect<R, never, Runtime.Runtime<R>>
```
