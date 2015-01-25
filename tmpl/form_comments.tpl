<div class="comments">
	%comments%
	<hr />
	<form name="addcomment" action="functions.php" method="post">
		<table>
			<tr>
				<td>name:</td>
				<td>
					<input type="text" name="addcomment_name" />
				</td>
			</tr>
			<tr>
				<td>text:</td>
				<td>
					<textarea name="addcomment_text" cols="30" rows="3"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="article_id" value="%id%" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" name="addcomment" value="Оставить комментарий" />
				</td>
			</tr>
		</table>
	</form>
</div>