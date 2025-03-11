## filterMap

Filters and maps elements sequentially in one operation.

This function processes each element one by one. It applies a function that
returns an `Option` to each element. If the function returns `Some`, the
element is kept; if it returns `None`, the element is removed. The operation
is done sequentially for each element.

**Example**

```ts
import { Console, Effect, Option } from "effect"

const task = (n: number) =>
  Effect.succeed(n).pipe(
    Effect.delay(1000 - (n * 100)),
    Effect.tap(Console.log(`task${n} done`))
  )

const program = Effect.filterMap(
  [task(1), task(2), task(3), task(4)],
  (n) => n % 2 === 0 ? Option.some(n) : Option.none()
)

// Effect.runPromise(program).then(console.log)
// Output:
// task1 done
// task2 done
// task3 done
// task4 done
// [ 2, 4 ]
```

**Signature**

```ts
declare const filterMap: { <Eff extends Effect<any, any, any>, B>(pf: (a: Effect.Success<Eff>) => Option.Option<B>): (elements: Iterable<Eff>) => Effect<Array<B>, Effect.Error<Eff>, Effect.Context<Eff>>; <Eff extends Effect<any, any, any>, B>(elements: Iterable<Eff>, pf: (a: Effect.Success<Eff>) => Option.Option<B>): Effect<Array<B>, Effect.Error<Eff>, Effect.Context<Eff>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L1429)

Since v2.0.0