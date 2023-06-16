# checkInterruptible

Checks the interrupt status, and produces the effect returned by the
specified callback.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const checkInterruptible: <R, E, A>(f: (isInterruptible: boolean) => Effect<R, E, A>) => Effect<R, E, A>
```
