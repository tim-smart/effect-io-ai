# make

A `Mailbox` is a queue that can be signaled to be done or failed.

To import and use `make` from the "Mailbox" module:

```ts
import * as Mailbox from "effect/Mailbox"
// Can be accessed like this
Mailbox.make
```

**Example**

```ts
import { Effect, Mailbox } from "effect"

Effect.gen(function* () {
  const mailbox = yield* Mailbox.make<number, string>()

  // add messages to the mailbox
  yield* mailbox.offer(1)
  yield* mailbox.offer(2)
  yield* mailbox.offerAll([3, 4, 5])

  // take messages from the mailbox
  const [messages, done] = yield* mailbox.takeAll
  assert.deepStrictEqual(messages, [1, 2, 3, 4, 5])
  assert.strictEqual(done, false)

  // signal that the mailbox is done
  yield* mailbox.end
  const [messages2, done2] = yield* mailbox.takeAll
  assert.deepStrictEqual(messages2, [])
  assert.strictEqual(done2, true)

  // signal that the mailbox has failed
  yield* mailbox.fail("boom")
})
```

**Signature**

```ts
export declare const make: <A, E = never>(
  capacity?: number | { readonly capacity?: number; readonly strategy?: "suspend" | "dropping" | "sliding" } | undefined
) => Effect<Mailbox<A, E>>
```
