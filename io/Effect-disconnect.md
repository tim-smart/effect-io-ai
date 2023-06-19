# disconnect

Returns an effect whose interruption will be disconnected from the
fiber's own interruption, being performed in the background without
slowing down the fiber's interruption.

This method is useful to create "fast interrupting" effects. For
example, if you call this on a bracketed effect, then even if the
effect is "stuck" in acquire or release, its interruption will return
immediately, while the acquire / release are performed in the
background.

See timeout and race for other applications.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const disconnect: <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
```
