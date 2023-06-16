# loopDiscard

Loops with the specified effectual function purely for its effects. The
moral equivalent of:

```ts
let s = initial

while (cont(s)) {
  body(s)
  s = inc(s)
}
```

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const loopDiscard: <Z, R, E, X>(
  initial: Z,
  cont: (z: Z) => boolean,
  inc: (z: Z) => Z,
  body: (z: Z) => Effect<R, E, X>
) => Effect<R, E, void>
```
