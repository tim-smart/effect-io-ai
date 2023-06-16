# loop

Loops with the specified effectual function, collecting the results into a
list. The moral equivalent of:

```ts
let s = initial
let as = [] as readonly A[]

while (cont(s)) {
  as = [body(s), ...as]
  s = inc(s)
}

A.reverse(as)
```

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.loop`.

### Signature

```typescript
export declare const loop: <Z, R, E, A>(
  initial: Z,
  cont: (z: Z) => boolean,
  inc: (z: Z) => Z,
  body: (z: Z) => Effect<R, E, A>
) => Effect<R, E, A[]>
```
