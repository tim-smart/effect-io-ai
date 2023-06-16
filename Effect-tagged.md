# tagged

Tags each metric in this effect with the specific tag.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const tagged: {
  (key: string, value: string): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, key: string, value: string): Effect<R, E, A>
}
```
