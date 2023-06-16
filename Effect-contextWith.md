# contextWith

Accesses the context of the effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.contextWith`.

### Signature

```typescript
export declare const contextWith: <R, A>(f: (context: Context.Context<R>) => A) => Effect<R, never, A>
```
