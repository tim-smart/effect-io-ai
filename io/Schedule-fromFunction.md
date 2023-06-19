# fromFunction

A schedule that always recurs, mapping input values through the specified
function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const fromFunction: <A, B>(f: (a: A) => B) => Schedule<never, A, B>
```
