# tryPromise

Create an `Effect` that when executed will construct `promise` and wait for
its result, errors will produce failure as `unknown`.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const tryPromise: <A>(evaluate: LazyArg<Promise<A>>) => Effect<never, unknown, A>
```
