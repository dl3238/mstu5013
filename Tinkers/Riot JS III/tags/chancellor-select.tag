<chancellor-select>
  <!-- HTML -->
	<div class="player-row d-flex justify-content-between" each={ player, i in candidates }>
	{console.log(this)};
		<span>{ player.name }</span>
		<button hide={ player.termLimited } class="btn btn-sm btn-secondary" onclick={ selectChancellor }>Select</button>
		<span show={player.termLimited }><em>Term Limited</em></span>
	</div>

  <script>
    // JAVASCRIPT
    let tag = this;

		this.players = opts.players;
		this.candidates = getCandidates(this.players);
		// Difference between candidates and players, see function getCandidates, a filter function(args){

		}

		selectChancellor(event) {
			let selectedPlayer = event.item.player;
					selectedPlayer.nominated = true;
			observer.trigger('chancellor:nominated', selectedPlayer);
		}

		function getCandidates(players) {
			return players.filter(player => !player.nominated); //ES6
			// return players.filter(function(player){
			// 	return !player.nominated;
			// });
		}

  </script>

  <style>
    /* CSS */
    :scope {}
		.player-row:not(last-of-type) {
			margin-bottom: 1em;
		}
  </style>
</chancellor-select>
