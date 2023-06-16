# withConfigProvider

Executes the specified workflow with the specified configuration provider.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const withConfigProvider: {
  (value: ConfigProvider): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, value: ConfigProvider): Effect<R, E, A>
}
```
