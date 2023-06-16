# collectAll

Collects the all element of the `Collection<A>` for which the effect returns a value.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const collectAll: <R, E, A>(elements: Iterable<Effect<R, E, Option.Option<A>>>) => Effect<R, E, A[]>
```
