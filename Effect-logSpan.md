# logSpan

Adjusts the label for the current logging span.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.logSpan`.

### Signature

```typescript
export declare const logSpan: {
  (label: string): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, label: string): Effect<R, E, A>
}
```
