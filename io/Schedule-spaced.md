# spaced

Returns a schedule that recurs continuously, each repetition spaced the
specified duration from the last run.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const spaced: (duration: Duration.Duration) => Schedule<never, unknown, number>
```
