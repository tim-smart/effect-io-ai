# tryCatch

Imports a synchronous side-effect into a pure value, translating any
thrown exceptions into typed failed effects.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.tryCatch`.

### Signature

```typescript
export declare const tryCatch: <E, A>(attempt: LazyArg<A>, onThrow: (u: unknown) => E) => Effect<never, E, A>
```
